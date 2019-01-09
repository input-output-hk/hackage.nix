{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { enable-doctests = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "config-ini"; version = "0.2.4.0"; };
      license = "BSD-3-Clause";
      copyright = "©2018 Getty Ritter";
      maintainer = "Getty Ritter <config-ini@infinitenegativeutility.com>";
      author = "Getty Ritter <config-ini@infinitenegativeutility.com>";
      homepage = "https://github.com/aisamanra/config-ini";
      url = "";
      synopsis = "A library for simple INI-based configuration files.";
      description = "The @config-ini@ library is a set of small monadic languages\nfor writing simple configuration languages with convenient,\nhuman-readable error messages.\n\n> parseConfig :: IniParser (Text, Int, Bool)\n> parseConfig = section \"NETWORK\" \$ do\n>   user <- field        \"user\"\n>   port <- fieldOf      \"port\" number\n>   enc  <- fieldFlagDef \"encryption\" True\n>   return (user, port, enc)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.transformers)
          (hsPkgs.megaparsec)
          ];
        };
      tests = {
        "test-ini-compat" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ini)
            (hsPkgs.config-ini)
            (hsPkgs.hedgehog)
            (hsPkgs.containers)
            (hsPkgs.unordered-containers)
            (hsPkgs.text)
            ];
          };
        "test-prewritten" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.config-ini)
            (hsPkgs.containers)
            (hsPkgs.unordered-containers)
            (hsPkgs.text)
            (hsPkgs.directory)
            ];
          };
        "test-doctest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.microlens)
            (hsPkgs.text)
            ];
          };
        };
      };
    }