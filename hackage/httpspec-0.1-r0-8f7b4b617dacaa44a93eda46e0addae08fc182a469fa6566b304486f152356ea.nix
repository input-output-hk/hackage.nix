let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
      description = "Using httpspec you can write a specification for a HTTP request/response\ndefining the method, headers, url parameters and the body.  This\nspecification bidirectionally maps an abstract request/response data\ntype to a concrete realisation as a HTTP request/response.  The\nspecification can be used to generate HTTP requests/responses from an\nabstract description and it can be used to parse a HTTP request/response\ninto such an abstract description.  The idea is very similar to the way\npickling of XML data is described in HXT.\nFor example, the abstract representation of an authentication request\nand response could be described as\ndata AuthUserReq\n= AuthUserReq\n{ authUser_user :: String\n, authUser_pass :: String\n}\ndata AuthUserRes\n= AuthUserOk { authUserOk_sid :: String }\n| AuthUserFailed\nUsing httpspec you can define a mapping between HTTP and these types:\ninstance HasReqSpec AuthUserReq where\nreqSpec =\nrsMeth Http.POST \$\nrsPath \"/authenticate-user\" \$\nrsWrap (uncurry AuthUserReq, \\(AuthUserReq a b) -> (a,b)) \$\nrsPair (rsParam \"uid\") (rsParam \"pass\")\ninstance HasResSpec AuthUserRes where\nresSpec =\nrsSwitch\n[ rsCase (AuthUserOk,authUserOk_sid) \$\nrsStatus 200 \$\nrsContentType \"text/plain\" \$\nrsEncodingFixed UTF8 \$\nrsBody\n, rsCaseConst AuthUserFailed \$\nrsStatus 403\n]";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."bidispec" or (buildDepError "bidispec"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."tagsoup" or (buildDepError "tagsoup"))
          (hsPkgs."hxt" or (buildDepError "hxt"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."Safe" or (buildDepError "Safe"))
          (hsPkgs."cgi" or (buildDepError "cgi"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."HTTP" or (buildDepError "HTTP"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."encoding" or (buildDepError "encoding"))
          ];
        };
      };
    }