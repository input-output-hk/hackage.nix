{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hedis-config"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "s9gf4ult@gmail.com";
      author = "Aleksey Uimanov";
      homepage = "https://bitbucket.org/s9gf4ult/hedis-config";
      url = "";
      synopsis = "Easy trivial configuration for Redis";
      description = "Datatype to parse redis connection settings from file like\n\n> host: localhost                 # host name or address\n> port: 6379                      # you can specify either port\n> # socket: /run/redis.socket     # or unix socket path\n> # service: redis                # or service name\n> password: \"pass\"                # if not specified then no password used\n> database: 0                     # database number to connect to\n> max-connections: 5              # max connections in pool\n> max-idle-time: 30               # keep connection open for 30 seconds\n> timeout: 30                     # connection timeout";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.hedis)
          (hsPkgs.scientific)
          (hsPkgs.text)
          (hsPkgs.time)
          ];
        };
      };
    }