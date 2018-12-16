{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "hack";
        version = "2009.4.23";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
      author = "Wang, Jinjing";
      homepage = "http://github.com/nfjinjing/hack/tree/master";
      url = "";
      synopsis = "a sexy Haskell Webserver Interface";
      description = "Hack: a sexy Haskell Webserver Interface\n========================================\nHack is a brain-dead port of the brilliant Ruby Rack <http://rack.rubyforge.org/> webserver interface.\nWhat does a Hack app look like\nmodule Main where\nimport Hack\nimport Hack.Handler.Kibro\nhello :: Application\nhello = \\env -> return \$ Response\n{ status  = 200\n, headers = [ (\"Content-Type\", \"text/plain\") ]\n, body    = \"Hello World\"\n}\nmain = run hello";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.cgi)
          (hsPkgs.network)
          (hsPkgs.haskell98)
          (hsPkgs.old-locale)
          (hsPkgs.old-time)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.containers)
          (hsPkgs.mps)
          (hsPkgs.kibro)
          (hsPkgs.data-default)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.bytestring)
          (hsPkgs.template)
          (hsPkgs.unix)
        ];
      };
    };
  }