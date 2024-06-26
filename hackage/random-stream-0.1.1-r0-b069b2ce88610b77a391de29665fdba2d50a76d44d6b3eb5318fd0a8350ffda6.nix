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
    flags = {
      have_urandom = false;
      have_ssl = false;
      have_win32_crypt = false;
    };
    package = {
      specVersion = "1.6";
      identifier = { name = "random-stream"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Manlio Perillo 2009";
      maintainer = "Manlio Perillo <manlio.perillo@gmail.com>";
      author = "Manlio Perillo <manlio.perillo@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "An infinite stream of random data";
      description = "Portable interface for the operating system source of pseudo\nrandom data.\nSupported sources are Unix /dev/urandom, Win32 CryptGenRandom and\nOpenSSL pseudo random numbers generator.\nThis package is based on idea from os.urandom implementation, in\nCPython.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
        ];
        libs = pkgs.lib.optionals (!flags.have_urandom) (if flags.have_ssl
          then [ (pkgs."ssl" or (errorHandler.sysDepError "ssl")) ]
          else pkgs.lib.optional (flags.have_win32_crypt) (pkgs."advapi32" or (errorHandler.sysDepError "advapi32")));
        buildable = true;
      };
    };
  }