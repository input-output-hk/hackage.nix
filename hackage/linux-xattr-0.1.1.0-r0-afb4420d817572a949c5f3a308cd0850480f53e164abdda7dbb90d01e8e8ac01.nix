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
      specVersion = "1.10";
      identifier = { name = "linux-xattr"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "© 2013-2014 Nicola Squartini";
      maintainer = "Nicola Squartini <tensor5@gmail.com>";
      author = "Nicola Squartini";
      homepage = "https://github.com/tensor5/linux-xattr";
      url = "";
      synopsis = "Read, set and list extended attributes";
      description = "Bindings to the Linux syscalls for reading and manipulating extended\nattributes (@<http://man7.org/linux/man-pages/man2/setxattr.2.html setxattr>@,\n@<http://man7.org/linux/man-pages/man2/getxattr.2.html getxattr>@,\n@<http://man7.org/linux/man-pages/man2/listxattr.2.html listxattr>@ and\n@<http://man7.org/linux/man-pages/man2/removexattr.2.html removexattr>@).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      };
    }