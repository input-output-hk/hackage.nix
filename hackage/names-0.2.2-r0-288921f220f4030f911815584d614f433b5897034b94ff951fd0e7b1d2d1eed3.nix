{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "names";
        version = "0.2.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
      author = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
      homepage = "";
      url = "";
      synopsis = "Type level names.";
      description = "Type level names.\n\n[@v0.2@] Show Instances added. Restricted to latin1.\n\n[@v0.2.1@] Infix operator fixities set.\n\n[@v0.2.2@] Merge \"Data.Name\" and \"Data.Name.TH\".\nAdded Documentation.\n\nNames are like strings on the type level.\nThis is a name:\n\n> H :& E :& L :& L :& O :& W_ :& O :& R :& L :& D\n\nThis package provides types which can be used\nas letters and a cons operator (@:&@). It also\nprovides syntactic sugar for using names via\ntemplate haskell:\n\n> name \"helloWorld\"\n\nThis will create a value named @helloWorld@\nwhich has the above type and can be used to\nwork with the name.\n\nNames are useful for named records. See the\n@named-records@ package.";
      buildType = "Simple";
    };
    components = {
      "names" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }