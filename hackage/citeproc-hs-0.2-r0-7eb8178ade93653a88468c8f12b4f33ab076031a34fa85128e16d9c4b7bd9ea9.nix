{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      small_base = true;
      test = true;
      bibutils = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "citeproc-hs";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "andrea.rossato@ing.unitn.it";
      author = "Andrea Rossato";
      homepage = "http://code.haskell.org/citeproc-hs";
      url = "";
      synopsis = "A Citation Style Language implementation in Haskell";
      description = "citeproc-hs is a library for automatically\nformatting bibliographic reference citations into\na variety of styles using a macro language called\nCitation Style Language (CSL). More details on\nCSL can be found here:\n<http://xbiblio.sourceforge.net/>.\n\nFor the API documentation please see \"Text.CSL\".";
      buildType = "Simple";
    };
    components = {
      "citeproc-hs" = {
        depends  = ([
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.mtl)
          (hsPkgs.hxt)
        ] ++ pkgs.lib.optionals (flags.bibutils) [
          (hsPkgs.hs-bibutils)
          (hsPkgs.filepath)
          (hsPkgs.directory)
        ]) ++ (if compiler.isGhc && compiler.version.ge "6.10"
          then [
            (hsPkgs.base)
            (hsPkgs.syb)
          ]
          else [ (hsPkgs.base) ]);
        libs = pkgs.lib.optional (flags.bibutils) (pkgs."bibutils");
      };
    };
  }