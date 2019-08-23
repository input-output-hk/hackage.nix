{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "polyparse"; version = "1.13"; };
      license = "LicenseRef-LGPL";
      copyright = "(c) 2006-2016 Malcolm Wallace";
      maintainer = "author";
      author = "Malcolm Wallace <Malcolm.Wallace@me.com>";
      homepage = "http://code.haskell.org/~malcolm/polyparse/";
      url = "";
      synopsis = "A variety of alternative parser combinator libraries.";
      description = "This version, 1.13 is a Non-Maintainer Upload (NMU).\nReport issues to the Hackage Trustees issue tracker.\n\nA variety of alternative parser combinator libraries, including\nthe original HuttonMeijer set.  The Poly sets have features like\ngood error reporting, arbitrary token type, running state, lazy\nparsing, and so on.  Finally, Text.Parse is a proposed\nreplacement for the standard Read class, for better\ndeserialisation of Haskell values from Strings.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.base)
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs.fail)) ++ (pkgs.lib).optionals (compiler.isGhc && true) [
          (hsPkgs.bytestring)
          (hsPkgs.text)
          ];
        };
      };
    }