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
          (hsPkgs.base)
          (hsPkgs.wreq)
          (hsPkgs.bytestring)
          (hsPkgs.exceptions)
          (hsPkgs.lens)
          (hsPkgs.transformers)
          (hsPkgs.http-client)
          (hsPkgs.aeson)
          (hsPkgs.datetime)
          (hsPkgs.text)
          (hsPkgs.url)
          (hsPkgs.xml)
          ];
        };
      };
    }