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
      specVersion = "1.8";
      identifier = {
        name = "dwarfadt";
        version = "0.6";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "eyal.lotem@gmail.com";
      author = "Eyal Lotem";
      homepage = "";
      url = "";
      synopsis = "High-level wrapper around the dwarf library";
      description = "dwarf is an excellent library to read dwarf files, but the output of\nparsing dwarf is very low-level and difficult to work with.\n\nThis library intends to wrap dwarf and return a simple ADT representing\nthe DWARF information in a high-level way, easy to work with.";
      buildType = "Simple";
    };
    components = {
      "dwarfadt" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.elf)
          (hsPkgs.bytestring-mmap)
          (hsPkgs.dwarf-el)
          (hsPkgs.lens)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.pretty)
          (hsPkgs.text)
          (hsPkgs.text-show)
        ];
      };
      exes = {
        "dumpdwarf" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.dwarfadt)
            (hsPkgs.dwarf-el)
            (hsPkgs.containers)
          ];
        };
        "dumpadt" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.dwarfadt)
            (hsPkgs.dwarf-el)
          ];
        };
      };
    };
  }