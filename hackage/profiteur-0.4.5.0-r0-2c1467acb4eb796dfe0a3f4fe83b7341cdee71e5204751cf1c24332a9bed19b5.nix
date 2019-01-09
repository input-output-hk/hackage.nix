{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { embed-data-files = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "profiteur"; version = "0.4.5.0"; };
      license = "BSD-3-Clause";
      copyright = "2014 Jasper Van der Jeugt";
      maintainer = "Jasper Van der Jeugt <m@jaspervdj.be>";
      author = "Jasper Van der Jeugt <m@jaspervdj.be>";
      homepage = "http://github.com/jaspervdj/profiteur";
      url = "";
      synopsis = "Treemap visualiser for GHC prof files";
      description = "Treemap visualiser for GHC prof files";
      buildType = "Simple";
      };
    components = {
      exes = {
        "profiteur" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.ghc-prof)
            (hsPkgs.js-jquery)
            (hsPkgs.scientific)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            ] ++ (pkgs.lib).optionals (flags.embed-data-files) [
            (hsPkgs.file-embed)
            (hsPkgs.template-haskell)
            ];
          };
        };
      };
    }