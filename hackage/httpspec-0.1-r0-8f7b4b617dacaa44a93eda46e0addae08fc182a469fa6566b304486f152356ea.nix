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
      specVersion = "1.2";
      identifier = { name = "httpspec"; version = "0.1"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "David Leuschner <leuschner@openfactis.org>";
      author = "David Leuschner";
      homepage = "";
      url = "";
      synopsis = "Specification of HTTP request/response generators and parsers";
      description = "Using httpspec you can write a specification for a HTTP request/response\ndefining the method, headers, url parameters and the body.  This\nspecification bidirectionally maps an abstract request/response data\ntype to a concrete realisation as a HTTP request/response.  The\nspecification can be used to generate HTTP requests/responses from an\nabstract description and it can be used to parse a HTTP request/response\ninto such an abstract description.  The idea is very similar to the way\npickling of XML data is described in HXT.\nFor example, the abstract representation of an authentication request\nand response could be described as\ndata AuthUserReq\n= AuthUserReq\n{ authUser_user :: String\n, authUser_pass :: String\n}\ndata AuthUserRes\n= AuthUserOk { authUserOk_sid :: String }\n| AuthUserFailed\nUsing httpspec you can define a mapping between HTTP and these types:\ninstance HasReqSpec AuthUserReq where\nreqSpec =\nrsMeth Http.POST $\nrsPath \"/authenticate-user\" $\nrsWrap (uncurry AuthUserReq, \\(AuthUserReq a b) -> (a,b)) $\nrsPair (rsParam \"uid\") (rsParam \"pass\")\ninstance HasResSpec AuthUserRes where\nresSpec =\nrsSwitch\n[ rsCase (AuthUserOk,authUserOk_sid) $\nrsStatus 200 $\nrsContentType \"text/plain\" $\nrsEncodingFixed UTF8 $\nrsBody\n, rsCaseConst AuthUserFailed $\nrsStatus 403\n]";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."bidispec" or (errorHandler.buildDepError "bidispec"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
          (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."Safe" or (errorHandler.buildDepError "Safe"))
          (hsPkgs."cgi" or (errorHandler.buildDepError "cgi"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."encoding" or (errorHandler.buildDepError "encoding"))
        ];
        buildable = true;
      };
    };
  }