component extends="Controller" {

  public void function config() {
		super.config();
		filters(through = "setup");
		filters(through = "findOne", only = "show,edit,update,delete");
	}

  // FILTERS

	private void function setup() {
		flashTypes = ["info", "ok", "warn", "bad"];
	}

	private any function findOne() {
		example = model("Contacts").findByKey(params.key);
		if (!IsObject(example)) {
			flashInsert(bad = "Contact #params.key# was not found");
			return redirectTo(route = "Contacts");
		}
	}

  function index() {
    cfparam(name="params.q", default="");
    if (params.q != "") {
      contacts = model("contact").findAllByFirst(value=params.q);
    } else {
      contacts = model("contact").findAll();
    }
  }

}