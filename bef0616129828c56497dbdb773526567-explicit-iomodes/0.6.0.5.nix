{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "explicit-iomodes";
        version = "0.6.0.5";
      };
      license = "BSD-3-Clause";
      copyright = "2009-2010 Bas van Dijk";
      maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
      author = "Bas van Dijk";
      homepage = "https://github.com/basvandijk/explicit-iomodes/";
      url = "";
      synopsis = "File handles with explicit IOModes";
      description = "The module @System.IO.ExplicitIOModes@ exports a\n@Handle@ to a file which is parameterized with the\nIOMode the handle is in. All operations on handles\nexplicitly specify the needed IOMode. This way it is\nimpossible to read from a write-only handle or write to\na read-only handle for example.\n\nSee the @explicit-iomodes-bytestring/text@ package for\n@ByteString/Text@ operations.";
      buildType = "Simple";
    };
    components = {
      "explicit-iomodes" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base-unicode-symbols)
          (hsPkgs.tagged)
        ];
      };
    };
  }