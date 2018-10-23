{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "conduit-iconv";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "slomo@coaxion.net";
      author = "Sebastian Dröge";
      homepage = "https://github.com/sdroege/conduit-iconv";
      url = "";
      synopsis = "Conduit for character encoding conversion.";
      description = "@conduit-iconv@ provides a \"Data.Conduit#t:Conduit\" for character encoding\nconversion, based on the iconv library.";
      buildType = "Simple";
    };
    components = {
      "conduit-iconv" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.conduit)
          (hsPkgs.bytestring)
        ];
        libs = pkgs.lib.optional (system.isOsx || system.isFreebsd) (pkgs."iconv");
      };
      tests = {
        "Tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.mtl)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.conduit)
            (hsPkgs.conduit-iconv)
          ];
        };
      };
    };
  }