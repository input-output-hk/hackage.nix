{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { hint = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "yi-core";
        version = "0.17.1";
      };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "Yi developers <yi-devel@googlegroups.com>";
      author = "";
      homepage = "https://github.com/yi-editor/yi#readme";
      url = "";
      synopsis = "Yi editor core library";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.attoparsec)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.directory)
          (hsPkgs.dlist)
          (hsPkgs.dynamic-state)
          (hsPkgs.filepath)
          (hsPkgs.hashable)
          (hsPkgs.ListLike)
          (hsPkgs.microlens-platform)
          (hsPkgs.mtl)
          (hsPkgs.old-locale)
          (hsPkgs.oo-prototypes)
          (hsPkgs.parsec)
          (hsPkgs.pointedlist)
          (hsPkgs.process)
          (hsPkgs.process-extras)
          (hsPkgs.split)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers-base)
          (hsPkgs.unix-compat)
          (hsPkgs.unordered-containers)
          (hsPkgs.xdg-basedir)
          (hsPkgs.yi-language)
          (hsPkgs.yi-rope)
          (hsPkgs.exceptions)
        ] ++ pkgs.lib.optional (flags.hint) (hsPkgs.hint)) ++ (if system.isWindows
          then [ (hsPkgs.Win32) ]
          else [ (hsPkgs.unix) ]);
      };
      tests = {
        "tasty" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.yi-rope)
            (hsPkgs.attoparsec)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.quickcheck-text)
            (hsPkgs.yi-core)
            (hsPkgs.text)
            (hsPkgs.containers)
          ];
        };
      };
      benchmarks = {
        "all" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.yi-core)
            (hsPkgs.yi-rope)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
          ];
        };
      };
    };
  }