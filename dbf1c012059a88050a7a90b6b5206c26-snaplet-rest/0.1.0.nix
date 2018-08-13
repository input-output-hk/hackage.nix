{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "snaplet-rest";
        version = "0.1.0";
      };
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
      "snaplet-rest" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.http-media)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.snap)
          (hsPkgs.snap-accept)
          (hsPkgs.snap-core)
          (hsPkgs.text)
          (hsPkgs.utf8-string)
          (hsPkgs.xmlhtml)
        ];
      };
    };
  }