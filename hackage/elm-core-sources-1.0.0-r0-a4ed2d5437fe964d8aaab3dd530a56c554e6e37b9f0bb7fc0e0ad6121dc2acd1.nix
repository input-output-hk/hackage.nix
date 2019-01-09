{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "elm-core-sources"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2014 Evan Czaplicki";
      maintainer = "joey@eremondi.com";
      author = "Evan Czaplicki";
      homepage = "http://github.com/JoeyEremondi/elm-build-lib";
      url = "";
      synopsis = "Source files for the Elm runtime and standard libraries";
      description = "Embeds the  standard libraries and runtime files of the Elm language as Haskell strings,\nso that they can be used for compilation and served in a Haskell web server.\nFor more information on the Elm language, see http://elm-lang.org.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.template-haskell)
          (hsPkgs.file-embed)
          (hsPkgs.bytestring)
          ];
        };
      };
    }