<template>
<div class="wrapper">
  <div class="header">
      <div class="logo">Жилфонд</div>
      <div class="profile">Пользователь</div>
  </div>
  <div class="main">
      <div class="left">
          <strong>Поиск сотрудников</strong>
          <input type="text" name="search" id="search" v-model="searchQuery" @input="onSearch" placeholder="Введите Id или имя" />
          <strong>Результаты</strong>
          <div class="result">

            <div v-if="users.length">
              <div class="card" v-for="user in users" :key="user.id" @click="selectUser(user)">
                  <div class="photo" :style="user.photo ? { backgroundImage: `url(${user.photo})` } : {backgroundImage: `url(nophoto.png)`}"></div>
                  <div class="info">
                      <strong>{{ user.name }}</strong>
                      <span class="email">{{ user.email }}</span>
                  </div>
              </div>
            </div>
            <p v-else>начните поиск</p>
              
          </div> 
      </div>
      <div class="right">
        
        <div class="card" v-if="selectedUser">
            <div class="photo" :style="selectedUser.photo ? { backgroundImage: `url(${selectedUser.photo})` } : {backgroundImage: `url(nophoto.png)`}"></div>
            <div class="info">
                <div class="title">{{ selectedUser.name }} {{ selectedUser.lastname }}</div>
                <div class="line"><span>email:</span>  {{ selectedUser.email }}</div>
                <div class="line"><span>phone:</span>  {{ selectedUser.phone }}</div>
                <div class="about">
                    <div class="title">О себе:</div>
                    {{ selectedUser.detail }}
                </div>
            </div>
        </div>
        <div class="empty" v-else>Выберите сотрудника, чтобы посмотреть его профиль</div>

      </div>
  </div>
</div>
</template>

<script>
import { mapState, mapActions } from 'vuex';

export default {
  data() {
    return {
      searchQuery: ''
    };
  },
  computed: {
    ...mapState(['users', 'selectedUser'])
  },
  methods: {
    ...mapActions(['searchUsers', 'selectUser', 'clearSearch']),
    onSearch() {
      if (this.searchQuery.trim()) {
        this.searchUsers(this.searchQuery);
      } else {
        this.clearSearch();
      }
    }
  }
};
</script>

<style lang="scss" scoped>
.container {
  display: flex;
}
</style>
