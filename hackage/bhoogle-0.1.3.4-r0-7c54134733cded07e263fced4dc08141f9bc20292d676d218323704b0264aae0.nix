{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = {
        name = "bhoogle";
        version = "0.1.3.4";
      };
      license = "(BSD-3-Clause OR Apache-2.0)";
      copyright = "2018 Andre Van Der Merwe";
      maintainer = "andre@andrevdm.com";
      author = "Andre Van Der Merwe";
      homepage = "https://github.com/andrevdm/bhoogle#readme";
      url = "";
      synopsis = "Simple terminal GUI for local hoogle.";
      description = "bhoogle is a terminal GUI layer over local hoogle. It provides search ahead and sub-string filtering in addition to the usual type-search.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "bhoogle" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.protolude)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.containers)
            (hsPkgs.brick)
            (hsPkgs.vty)
            (hsPkgs.vector)
            (hsPkgs.process)
            (hsPkgs.lens)
            (hsPkgs.time)
            (hsPkgs.hoogle)
            (hsPkgs.typed-process)
          ];
        };
      };
    };
  }