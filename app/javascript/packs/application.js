import 'bootstrap';  
import '../stylesheets/application';
  import '@fortawesome/fontawesome-free/js/all';

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "bootstrap/dist/js/bootstrap"

Rails.start()
Turbolinks.start()
ActiveStorage.start()
