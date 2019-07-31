{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "transformers-except"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2017 Tim McGilchrist";
      maintainer = "Tim McGilchrist <timmcgil@gmail.com>";
      author = "Tim McGilchrist <timmcgil@gmail.com>";
      homepage = "http://github.com/tmcgilchrist/transformers-either/";
      url = "";
      synopsis = "An Except monad transformer with";
      description = "Extra pieces for working with Except";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.exceptions)
          (hsPkgs.transformers)
          ];
        };
      };
    }