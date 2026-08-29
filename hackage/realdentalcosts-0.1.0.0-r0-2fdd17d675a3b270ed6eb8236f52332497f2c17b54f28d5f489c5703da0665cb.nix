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
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "realdentalcosts"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "research@realdentalcosts.com";
      author = "Real Dental Costs Data and Research Team";
      homepage = "https://realdentalcosts.com/en/api/";
      url = "";
      synopsis = "Client for the Real Dental Costs Open Data API (US dental prices)";
      description = "Typed client for the Real Dental Costs Open Data API\n(<https://realdentalcosts.com/en/api/>): US dental procedure cash price\nranges by state, state cost indexes and Medicaid paid amounts per CDT code\nderived from the HHS/CMS T-MSIS provider spending files. Every payload\ncarries a provenance block (basis, confidence, sample size). Data licence\nCC BY 4.0; see <https://realdentalcosts.com/en/methodology/>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }