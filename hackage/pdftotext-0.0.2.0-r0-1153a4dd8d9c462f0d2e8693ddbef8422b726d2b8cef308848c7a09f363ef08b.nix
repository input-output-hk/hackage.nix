{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { xml-conduit = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "pdftotext"; version = "0.0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 G. Eyaeb";
      maintainer = "geyaeb@protonmail.com";
      author = "G. Eyaeb";
      homepage = "https://sr.ht/~geyaeb/haskell-pdftotext/";
      url = "";
      synopsis = "Extracts text from PDF using poppler";
      description = "The @pdftotext@ package provides functions for extraction of plain text from PDF documents. It uses C++ library [Poppler](https://poppler.freedesktop.org/), which is required to be installed in the system. Output of Haskell @pdftotext@ library is identical to output of Poppler's tool @pdftotext@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ] ++ (pkgs.lib).optional (flags.xml-conduit) (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"));
        libs = [ (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")) ];
        pkgconfig = [
          (pkgconfPkgs."poppler-cpp" or (errorHandler.pkgConfDepError "poppler-cpp"))
          ];
        buildable = true;
        };
      tests = {
        "pdftotext-test" = {
          depends = [
            (hsPkgs."pdftotext" or (errorHandler.buildDepError "pdftotext"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover")))
            ];
          buildable = true;
          };
        };
      };
    }