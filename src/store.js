import Vue from 'vue';
import Vuex from 'vuex';

Vue.use(Vuex);

export default new Vuex.Store({
  state: {
    users: [],
    selectedUser: null
  },
  mutations: {
    setUsers(state, users) {
      state.users = users;
    },
    selectUser(state, user) {
      state.selectedUser = user;
    },
    clearUsers(state) {
      state.users = [];
      state.selectedUser = null;
    }
  },
  actions: {
    async searchUsers({ commit }, query) {
      // Эмуляция API-запроса на бэкенд для поиска пользователей
      const users = await searchUsersAPI(query);
      commit('setUsers', users);
    },
    selectUser({ commit }, user) {
      commit('selectUser', user);
    },
    clearSearch({ commit }) {
      commit('clearUsers');
    }
  }
});

// Эмуляция функции API для поиска пользователей
function searchUsersAPI(query) {
  return new Promise(resolve => {
    /* setTimeout(() => {
      const dummyUsers = [
        { id: 1, firstName: 'John', lastName: 'Doe', email: 'john@example.com', phone: '123-456-7890', description: 'Developer' },
        { id: 2, firstName: 'Jane', lastName: 'Doe', email: 'jane@example.com', phone: '987-654-3210', description: 'Designer' },
      ];
      resolve(dummyUsers.filter(user => user.firstName.toLowerCase().includes(query.toLowerCase())));
    }, 500); */
    fetch('http://127.0.0.1:8000/users/search/?query='+query)
      .then(response => response.json())
      .then(data => {
        console.log(data);
        resolve(data)
      });
  });
}
