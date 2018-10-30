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
        name = "text-all";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yom@artyom.me";
      author = "Artyom";
      homepage = "http://github.com/aelve/text-all";
      url = "";
      synopsis = "Everything Data.Text related in one package";
      description = "Everything @Data.Text@-related in one package.\n\nNote that this package does not follow PVP – it specifies lower bounds for its dependencies, but the upper bounds are somewhat lax. This shouldn't be a problem, however, since @Data.Text.All@ is intended to be imported qualified.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.text-show)
          (hsPkgs.text-format)
        ];
      };
    };
  }