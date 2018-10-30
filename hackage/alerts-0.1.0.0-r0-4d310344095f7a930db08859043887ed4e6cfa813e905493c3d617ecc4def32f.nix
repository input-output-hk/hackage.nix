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
        name = "alerts";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Daniel Campoverde";
      maintainer = "alx@sillybytes.net";
      author = "Daniel Campoverde";
      homepage = "https://github.com/alx741/alerts#readme";
      url = "";
      synopsis = "Alert messages for web applications";
      description = "Alert messages for web applications:\n\n* Bootstrap 3\n\n* Bootstrap 4\n\n* Foundation 5";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.blaze-html)
        ];
      };
    };
  }