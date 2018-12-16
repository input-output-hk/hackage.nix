{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "top";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2016 Pasqualino `Titto` Assini";
      maintainer = "tittoassini@gmail.com";
      author = "Pasqualino `Titto` Assini";
      homepage = "http://github.com/tittoassini/top";
      url = "";
      synopsis = "Top (typed oriented protocol) API";
      description = "See the <http://github.com/tittoassini/top online tutorial>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.data-default-class)
          (hsPkgs.flat)
          (hsPkgs.template-haskell)
          (hsPkgs.pipes)
          (hsPkgs.transformers)
          (hsPkgs.zm)
          (hsPkgs.text)
          (hsPkgs.stm)
          (hsPkgs.ListLike)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.deepseq)
          (hsPkgs.extra)
          (hsPkgs.time)
          (hsPkgs.pretty)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8") (hsPkgs.th-lift)) ++ (if compiler.isGhcjs && true
          then [ (hsPkgs.ghcjs-base) ]
          else [
            (hsPkgs.websockets)
            (hsPkgs.hslogger)
            (hsPkgs.acid-state)
            (hsPkgs.safecopy)
            (hsPkgs.filepath)
          ]);
      };
      tests = {
        "top-test-repo" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.top)
            (hsPkgs.zm)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.directory)
          ];
        };
        "top-doctest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.filemanip)
          ];
        };
      };
    };
  }