{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "Lykah"; version = "0.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Johannes Gerer <oss@johannesgerer.com>";
      author = "Johannes Gerer";
      homepage = "http://johannesgerer.com/buchhaltung";
      url = "";
      synopsis = "A static website and blog generator";
      description = "Build websites using the full power and flexibility of Haskell.\n\nSee <https://github.com/johannesgerer/Lykah Readme> on Github.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.blaze-markup)
          (hsPkgs.ListLike)
          (hsPkgs.pandoc)
          (hsPkgs.safe)
          (hsPkgs.split)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.filepath)
          (hsPkgs.template-haskell)
          (hsPkgs.regex-posix)
          (hsPkgs.regex-compat)
          (hsPkgs.clay)
          (hsPkgs.old-locale)
          (hsPkgs.blazeT)
          (hsPkgs.directory)
          (hsPkgs.filesystem-trees)
          (hsPkgs.formatting)
          ];
        };
      exes = {
        "lykah" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.blaze-markup)
            (hsPkgs.ListLike)
            (hsPkgs.pandoc)
            (hsPkgs.safe)
            (hsPkgs.split)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.array)
            (hsPkgs.filepath)
            (hsPkgs.template-haskell)
            (hsPkgs.regex-posix)
            (hsPkgs.regex-compat)
            (hsPkgs.clay)
            (hsPkgs.old-locale)
            (hsPkgs.blazeT)
            (hsPkgs.directory)
            (hsPkgs.filesystem-trees)
            (hsPkgs.formatting)
            ];
          };
        };
      };
    }