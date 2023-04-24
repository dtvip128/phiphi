import { setupEntryPoint } from './setupEntryPoint';
import App from '@/views/admin/dashboard/index.vue';
import router from '@/routes/admin/index';
// import '@/assets/css/style.scss';

setupEntryPoint(App, router);
