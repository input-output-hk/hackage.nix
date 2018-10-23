{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      ruby20 = false;
      ruby19 = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hruby";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bartavelle@gmail.com";
      author = "Simon Marechal";
      homepage = "";
      url = "";
      synopsis = "Embed Ruby in your Haskell program.";
      description = "Warning: this is completely experimental. Everything you need should be in \"Foreign.Ruby\".";
      buildType = "Simple";
    };
    components = {
      "hruby" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.attoparsec)
          (hsPkgs.vector)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
        ];
        libs = if flags.ruby20
          then [ (pkgs."ruby") ]
          else if flags.ruby19
            then [ (pkgs."ruby1.9") ]
            else [ (pkgs."ruby1.8") ];
      };
      tests = {
        "test-roundtrip" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hruby)
            (hsPkgs.aeson)
            (hsPkgs.QuickCheck)
            (hsPkgs.text)
            (hsPkgs.attoparsec)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }