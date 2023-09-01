component extends="Controller" {

  function index() {
    cfparam(name="params.q", default="");
    if (params.q != "") {
      contacts = model("contact").findAllByFirst(value=params.q);
    } else {
      contacts = model("contact").findAll();
    }
  }

}