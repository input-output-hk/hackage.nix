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
        name = "SCRIPTWriter";
        version = "1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Rick Klomp";
      maintainer = "r.klomp@cs.stir.ac.uk";
      author = "Rick Klomp";
      homepage = "https://github.com/RKlompUU/SCRIPTWriter";
      url = "";
      synopsis = "ESCRIPT: a human friendly language for programming Bitcoin scripts";
      description = "Please see the README on Github at https://github.com/RKlompUU/SCRIPTWriter";
      buildType = "Simple";
    };
    components = {
      "SCRIPTWriter" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.uu-tc)
          (hsPkgs.bytestring)
          (hsPkgs.bitcoin-script)
          (hsPkgs.bitcoin-hs)
          (hsPkgs.array)
        ];
      };
      exes = {
        "SCRIPTWriter-exe" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.SCRIPTWriter)
          ];
        };
      };
    };
  }