{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      splitbase = true;
      http = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "hogg";
        version = "0.4.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "Conrad Parker, 2007-2011";
      maintainer = "Conrad Parker <conrad@metadecks.org>";
      author = "Conrad Parker";
      homepage = "http://www.kfish.org/software/hogg/";
      url = "";
      synopsis = "Library and tools to manipulate the Ogg container format";
      description = "The HOgg package provides a commandline tool for manipulating Ogg files.\nIt supports chained and multiplexed Ogg bitstreams and Ogg Skeleton.\nHOgg also includes a library that may be used by other packages for handling\nthe Ogg container format.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = (if flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.HUnit)
            (hsPkgs.array)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.random)
            (hsPkgs.time)
            (hsPkgs.old-locale)
          ]
          else [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.HUnit)
            (hsPkgs.time)
          ]) ++ pkgs.lib.optional (flags.http) (hsPkgs.HTTP1);
      };
      exes = {
        "hogg" = {};
        "ListMergeTest" = {};
      };
    };
  }