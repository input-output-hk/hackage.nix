{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "PandocAgda"; version = "2.3.3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Péter Diviánszky <divipp@gmail.com>";
      author = "Péter Diviánszky";
      homepage = "";
      url = "";
      synopsis = "Pandoc support for literate Agda";
      description = "Agda is a dependently typed functional programming language\nand a proof assistant.\n\nThis package contains a modified Agda compiler which\nprocess comments in literate Agda files with Pandoc.\nPandoc is a universal document converter.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.Agda)
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.QuickCheck)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.xhtml)
          (hsPkgs.pandoc)
          (hsPkgs.pandoc-types)
          (hsPkgs.text)
          ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs.Win32)) ++ (if compiler.isGhc && (compiler.version).lt "7.6"
          then [ (hsPkgs.old-time) (hsPkgs.directory) ]
          else [ (hsPkgs.time) (hsPkgs.directory) ]);
        };
      exes = {
        "agdapandoc" = { depends = [ (hsPkgs.PandocAgda) (hsPkgs.base) ]; };
        };
      };
    }