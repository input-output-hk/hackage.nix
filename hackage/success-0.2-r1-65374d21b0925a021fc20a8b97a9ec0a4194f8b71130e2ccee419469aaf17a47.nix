{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "success";
        version = "0.2";
      };
      license = "MIT";
      copyright = "(c) 2015, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/success";
      url = "";
      synopsis = "A version of Either specialised for encoding of success or failure";
      description = "The primary motivation for creation of this package was the need\nfor the 'Alternative' instance of 'Either',\nwhich there is no sane way to implement.\nThe type provided by this library extends 'Either' in a way to provide the missing instance.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }