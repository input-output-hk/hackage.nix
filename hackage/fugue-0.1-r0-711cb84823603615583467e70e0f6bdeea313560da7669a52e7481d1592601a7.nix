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
      specVersion = "1.8";
      identifier = {
        name = "fugue";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "alec@deviant-logic.net";
      author = "Alec Heller";
      homepage = "";
      url = "";
      synopsis = "A recapitulated prelude with minimal dependencies\nand profligate exports.";
      description = "Fugue intends to scratch that itchy feeling you\nget when you realize you need to import `Data.Foldable`,\nthen hide `foldr` from the prelude; when you can't decide\nwhether to go all the way to the top of your buffer to\nimport `Control.Monad` to get `forM` or just use\n(`flip` `mapM`) instead. Importing `Control.Applicative`\njust for (\\<\$\\>) is annoying, but so is writing ``fmap``\neverywhere. Fugue exports a bunch of useful stuff so you\ndon't have to, tending to prefer more general functions\nfrom various and sundry corners of the base libraries to\nthose in `Prelude`.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
      };
    };
  }