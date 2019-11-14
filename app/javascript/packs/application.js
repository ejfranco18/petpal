import "bootstrap";
import "../plugins/flatpickr";
import 'mapbox-gl/dist/mapbox-gl.css';
import Glide from '@glidejs/glide'
import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';

initMapbox();
initAutocomplete();
new Glide('.glide').mount()
