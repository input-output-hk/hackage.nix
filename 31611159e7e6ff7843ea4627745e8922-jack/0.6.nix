{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      buildexamples = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "jack";
        version = "0.6";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Soenke Hahn, Henning Thielemann";
      homepage = "http://www.haskell.org/haskellwiki/JACK";
      url = "";
      synopsis = "Bindings for the JACK Audio Connection Kit";
      description = "Very basic bindings for the JACK Audio Connection Kit";
      buildType = "Simple";
    };
    components = {
      "jack" = {
        depends  = [
          (hsPkgs.midi)
          (hsPkgs.bytestring)
          (hsPkgs.explicit-exception)
          (hsPkgs.transformers)
          (hsPkgs.enumset)
          (hsPkgs.array)
          (hsPkgs.unix)
          (hsPkgs.base)
        ];
        pkgconfig = [
          (pkgconfPkgs.jack)
        ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs)
        ];
      };
      exes = {
        "amplify" = {
          libs = [ (pkgs."jack") ];
        };
        "impulse-train" = {
          libs = [ (pkgs."jack") ];
        };
        "midimon" = {
          libs = [ (pkgs."jack") ];
        };
      };
    };
  }