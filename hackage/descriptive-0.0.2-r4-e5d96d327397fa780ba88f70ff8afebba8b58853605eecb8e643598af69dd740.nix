{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "descriptive"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2015 Chris Done";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done";
      homepage = "https://github.com/chrisdone/descriptive";
      url = "";
      synopsis = "Self-describing consumers/parsers; forms, cmd-line args, JSON, etc.";
      description = "Self-describing consumers/parsers. See the README.md for more information. It is currently EXPERIMENTAL.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.mtl)
          (hsPkgs.aeson)
          (hsPkgs.bifunctors)
          ];
        };
      };
    }