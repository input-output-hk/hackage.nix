{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "json-feed"; version = "0.0.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "Taylor Fausak";
      author = "";
      homepage = "https://github.com/tfausak/json-feed#readme";
      url = "";
      synopsis = "JSON Feed";
      description = "This is an implementation of the JSON Feed spec in Haskell. The spec is available at <https://jsonfeed.org>. JSON Feed is similar to the Atom and RSS feed formats, but it is serialized as JSON rather than XML.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.mime-types)
          (hsPkgs.network-uri)
          (hsPkgs.tagsoup)
          (hsPkgs.text)
          (hsPkgs.time)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.hspec)
            (hsPkgs.json-feed)
            (hsPkgs.mime-types)
            (hsPkgs.network-uri)
            (hsPkgs.tagsoup)
            (hsPkgs.text)
            (hsPkgs.time)
            ];
          };
        };
      };
    }