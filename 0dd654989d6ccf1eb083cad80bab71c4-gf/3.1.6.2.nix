{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      interrupt = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "gf";
        version = "3.1.6.2";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "";
      author = "";
      homepage = "http://www.grammaticalframework.org";
      url = "";
      synopsis = "Grammatical Framework";
      description = "GF, Grammatical Framework, is a programming language for multilingual grammar applications";
      buildType = "Custom";
    };
    components = {
      "gf" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.random)
        ];
      };
      exes = {
        "gf" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.random)
            (hsPkgs.old-time)
            (hsPkgs.process)
            (hsPkgs.pretty)
            (hsPkgs.mtl)
            (hsPkgs.haskeline)
          ] ++ (if system.isWindows
            then [ (hsPkgs.Win32) ]
            else [ (hsPkgs.unix) ]);
          build-tools = [
            (hsPkgs.buildPackages.happy)
            (hsPkgs.buildPackages.alex)
          ];
        };
      };
    };
  }