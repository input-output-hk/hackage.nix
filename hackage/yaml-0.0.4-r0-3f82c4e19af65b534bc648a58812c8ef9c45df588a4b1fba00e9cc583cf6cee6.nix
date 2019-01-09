{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "yaml"; version = "0.0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://github.com/snoyberg/yaml/tree/master";
      url = "";
      synopsis = "Support for serialising Haskell to and from Yaml.";
      description = "Binds to the libyaml library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring-class)
          (hsPkgs.data-object)
          (hsPkgs.bytestring)
          (hsPkgs.haskell98)
          ];
        };
      };
    }