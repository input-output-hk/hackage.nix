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
      specVersion = "1.10";
      identifier = { name = "snaplet-rest"; version = "0.1.0"; };
      license = "MIT";
      copyright = "(c) 2013 Timothy Jones";
      maintainer = "Timothy Jones <git@zimothy.com>";
      author = "Timothy Jones";
      homepage = "http://github.com/zimothy/snaplet-rest";
      url = "";
      synopsis = "REST resources for the Snap web framework";
      description = "REST resources for the Snap framework.\n\nAs an example, let's translate the following datatype into a resource.\n\n> data User = User Username String Int\n>\n> type Username = CI String\n\nWe need a type to represent changes to the resource.  This 'partial' type\nindicates what properties to change: either the name, the age, or both.\n\n> data UserPart = UserPart (Maybe String) (Maybe Int)\n\nThis type also acts as a search mechanism: we can search by names, ages, or\nboth.  We can use either a username or a @UserPart@ search to find users, and\ndefine a function to convert URL query string parameters to this search.\n\n> type UserId = Either Username UserPart\n>\n> userIdFromParams :: Params -> Maybe UserId\n\nNow we have the pieces required to define our CRUD behaviour.\n\n> createUser :: User -> AppHandler ()\n>\n> readUser :: UserId -> AppHandler [User]\n>\n> updateUser :: UserId -> UserPart -> AppHandler Bool\n>\n> deleteUser :: UserId -> AppHandler Bool\n\nIf we've implemented Aeson instances, we can add JSON as a media format\nwithout having to define these manually.  Once the behaviour is attached to\nthe resource, it can be served in the handler.\n\n> serveUser :: AppHandler ()\n> serveUser = serveResource \$ resource\n>     & addMedia jsonInstances\n>     & setCreate createUser\n>     & setRead readUser\n>     & setUpdate updateUser\n>     & setDelete deleteUser\n>     & setFromParams userIdFromParams";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
          (hsPkgs."http-media" or (buildDepError "http-media"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."snap" or (buildDepError "snap"))
          (hsPkgs."snap-accept" or (buildDepError "snap-accept"))
          (hsPkgs."snap-core" or (buildDepError "snap-core"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."xmlhtml" or (buildDepError "xmlhtml"))
          ];
        };
      };
    }