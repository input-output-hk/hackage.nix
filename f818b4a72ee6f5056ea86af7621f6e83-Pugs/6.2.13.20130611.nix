{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      perl5 = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "Pugs";
        version = "6.2.13.20130611";
      };
      license = "BSD-3-Clause";
      copyright = "2005-2012, The Pugs Contributors";
      maintainer = "Audrey Tang <audreyt@audreyt.org>";
      author = "Audrey Tang <audreyt@audreyt.org>";
      homepage = "http://pugscode.org/";
      url = "";
      synopsis = "A Perl 6 Implementation";
      description = "A Perl 6 Implementation";
      buildType = "Custom";
    };
    components = {
      exes = {
        "pugs" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.network)
            (hsPkgs.pretty)
            (hsPkgs.time)
            (hsPkgs.random)
            (hsPkgs.process)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.array)
            (hsPkgs.directory)
            (hsPkgs.utf8-string)
            (hsPkgs.binary)
            (hsPkgs.haskeline)
            (hsPkgs.FindBin)
            (hsPkgs.control-timeout)
            (hsPkgs.MetaObject)
            (hsPkgs.HsParrot)
            (hsPkgs.pugs-compat)
            (hsPkgs.pugs-DrIFT)
            (hsPkgs.stringtable-atom)
            (hsPkgs.HsSyck)
            (hsPkgs.stm)
          ];
        };
      };
    };
  }