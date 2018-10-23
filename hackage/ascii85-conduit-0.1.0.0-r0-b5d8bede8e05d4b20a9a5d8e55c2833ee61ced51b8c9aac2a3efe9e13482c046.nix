{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.16";
      identifier = {
        name = "ascii85-conduit";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Kazuo Koga <obiwanko@me.com>";
      author = "Kazuo Koga";
      homepage = "";
      url = "";
      synopsis = "Conduit for encoding ByteString into Ascii85";
      description = "Conduit for encoding ByteString into Ascii85.";
      buildType = "Simple";
    };
    components = {
      "ascii85-conduit" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.conduit)
            (hsPkgs.ascii85-conduit)
          ];
        };
      };
    };
  }