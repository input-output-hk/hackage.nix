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
      specVersion = "1.2";
      identifier = {
        name = "procstat";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "patrick@parcs.ath.cx";
      author = "Patrick Palka";
      homepage = "http://closure.ath.cx/procstat";
      url = "";
      synopsis = "get information on processes in Linux";
      description = "procstat is a clean interface to the Linux /proc\nfilesystem; specifically, the /proc/[0-9]+/stat files.\nIt essentially parses the process data found in those\nfiles into a more semantic data structure.";
      buildType = "Simple";
    };
    components = {
      "procstat" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
        ];
      };
    };
  }