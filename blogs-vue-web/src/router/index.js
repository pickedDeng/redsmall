import Vue from 'vue'
import VueRouter from 'vue-router'
import Index from "@/views/Index"
import mainContent from "@/views/mainContent"
import blogs from "@/views/blogsList";
import picture from "@/views/picture";
import friendLink from "@/views/friendLink";
import words from "@/views/words";
import about from "@/views/about";
import blogdetail   from "@/views/blogdetail"

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'Index',
    redirect: '/main/blogs',
    component: Index,
    children: [
      {
        path: "main",
        component: mainContent,
        
        children: [
          {
            path: "blogs",
            component: blogs,
            meta:{
              title:"博客列表"
            }
          },
          {
            path: "picture",
            component: picture,
            meta:{
              title:"相册"
            }
          },
          {
            path: "friendLink",
            component: friendLink,
            meta:{
              title:"友情链接"
            }
          },
          {
            path: "words",
            component: words,
            meta:{
              title:"留言板"
            }
          },
          {
            path: "about",
            component: about,
            meta:{
              title:"关于我"
            }
          },{
            path: "blogdetail",
            component: blogdetail,
            meta:{
              title:"博客详情"
            }
          },
        ]
      }
    ],
  },
  // {
  //   path: '/about',
  //   name: 'About',
  //   // route level code-splitting
  //   // this generates a separate chunk (about.[hash].js) for this route
  //   // which is lazy-loaded when the route is visited.
  //   component: function () {
  //     return import(/* webpackChunkName: "about" */ '../views/About.vue')
  //   }
  // }
]

const router = new VueRouter({
  routes
})
// 全局守卫 更换头部title
router.beforeEach((to, from, next) => {
  window.document.title = to.meta.title || '红色小裤衩';
  next()
})

export default router
