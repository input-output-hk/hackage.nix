{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "data-object-json"; version = "0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://github.com/snoyberg/data-object-json/tree/master";
      url = "";
      synopsis = "Serialize JSON data to/from Haskell using the data-object library.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.json-b)
          (hsPkgs.bytestring-trie)
          (hsPkgs.bytestring)
          (hsPkgs.data-object)
          (hsPkgs.attempt)
          (hsPkgs.convertible-text)
          (hsPkgs.syb)
          ];
        };
      };
    }