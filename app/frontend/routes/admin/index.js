const Index = () => import('@/views/admin/dashboard/index.vue');

const routes = [
  {
    path: '/admin/dashboard/index',
    name: 'index',
    components: {
      default: Index,
    },
  },
];

export default routes;
