{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "MicrosoftTranslator"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "neto@netowork.me";
      author = "Ernesto Rodriguez";
      homepage = "";
      url = "";
      synopsis = "Interface for Microsoft Translator";
      description = "A simple library to use <https://www.microsoft.com/en-us/translator/default.aspx Microsoft Translator> in Haskell.\nIt provides an easy to use interface to the free translation service from\nMicrosoft so one can easily add language translation to a Haskell program\nas long as there is internet connection available.\n\nThe easiest way to use the program is via the toplevel translate function:\n\n> translate :: ClientId -> ClientSecret -> Text -> BingLanguage -> BingLanguage -> IO (Either BingError Text)\n\nTo use this library one must have an account for Microsoft Translator in the\nAzure Data Market. More information about this package available\n<https://github.com/netogallo/Microsoft-Translator-Haskell here>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."wreq" or ((hsPkgs.pkgs-errors).buildDepError "wreq"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."datetime" or ((hsPkgs.pkgs-errors).buildDepError "datetime"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."url" or ((hsPkgs.pkgs-errors).buildDepError "url"))
          (hsPkgs."xml" or ((hsPkgs.pkgs-errors).buildDepError "xml"))
          ];
        buildable = true;
        };
      };
    }