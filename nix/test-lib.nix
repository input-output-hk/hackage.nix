{
  "0.1.0.0" = {
    sha256 = "8cf5e7afafb07444f38a9ae0fee8300857d8785c1c29204c7b297ca7ad1896ef";
    revisions = {
      r0 = {
        nix = import ../hackage/test-lib-0.1.0.0-r0-f8473aa0559e074916a2d83f80e7c5829ec7a0908480a08de4d9aa428a5b1b1f.nix;
        revNum = 0;
        sha256 = "f8473aa0559e074916a2d83f80e7c5829ec7a0908480a08de4d9aa428a5b1b1f";
        };
      r1 = {
        nix = import ../hackage/test-lib-0.1.0.0-r1-a9b025e822b5352eddffa6e37679fea13eaa10c8ed5d19b6f1b165fa218c5e37.nix;
        revNum = 1;
        sha256 = "a9b025e822b5352eddffa6e37679fea13eaa10c8ed5d19b6f1b165fa218c5e37";
        };
      r2 = {
        nix = import ../hackage/test-lib-0.1.0.0-r2-a1c0ace357bcc6db054d1610dd0bc8e63ef23923b60a782e021ee35837d34ad5.nix;
        revNum = 2;
        sha256 = "a1c0ace357bcc6db054d1610dd0bc8e63ef23923b60a782e021ee35837d34ad5";
        };
      default = "r2";
      };
    };
  "0.2" = {
    sha256 = "718cea680e1c4c10390a4533bf021f516fb2fcc7b2bb92da714895a607223845";
    revisions = {
      r0 = {
        nix = import ../hackage/test-lib-0.2-r0-e500bcdd1f3e31dc7b21a7ac180ae4e102b7f402e744c223c212e6a00fe54aa7.nix;
        revNum = 0;
        sha256 = "e500bcdd1f3e31dc7b21a7ac180ae4e102b7f402e744c223c212e6a00fe54aa7";
        };
      default = "r0";
      };
    };
  "0.2.1" = {
    sha256 = "59ec5b6d7a154bf99a900d26c4a34e7ec318d96ed1b0e852a5c49aa5766c1eaa";
    revisions = {
      r0 = {
        nix = import ../hackage/test-lib-0.2.1-r0-c55c3c045bb89d38459ace872aafbdb022758667251e4e57b280b4e6b6f459d3.nix;
        revNum = 0;
        sha256 = "c55c3c045bb89d38459ace872aafbdb022758667251e4e57b280b4e6b6f459d3";
        };
      default = "r0";
      };
    };
  "0.2.2" = {
    sha256 = "5f74c875d673fa447b287bf71d5f76ade66a81432efb195e564d3910e481b92f";
    revisions = {
      r0 = {
        nix = import ../hackage/test-lib-0.2.2-r0-02d2b1ee66d79eaa9c03b165b44b8f0f874ec357fc72629c00b4408c4cb48944.nix;
        revNum = 0;
        sha256 = "02d2b1ee66d79eaa9c03b165b44b8f0f874ec357fc72629c00b4408c4cb48944";
        };
      default = "r0";
      };
    };
  "0.3" = {
    sha256 = "5b198ada5b44a33b0af9b996051b9bd3a743c794f02cd100c370fc01bc7e6395";
    revisions = {
      r0 = {
        nix = import ../hackage/test-lib-0.3-r0-c1d91c979822607668735ddbc66560854bca9d793ff5db48ad650afc1cac2c5b.nix;
        revNum = 0;
        sha256 = "c1d91c979822607668735ddbc66560854bca9d793ff5db48ad650afc1cac2c5b";
        };
      default = "r0";
      };
    };
  "0.4" = {
    sha256 = "852cff65aae4aaf0fe98c13abc6728c05afb8e24079dd8b2a3e4b7bd8f98e04a";
    revisions = {
      r0 = {
        nix = import ../hackage/test-lib-0.4-r0-3d19195feca5c8ab893da6d63f3440b7b572e1394223e07478658582ecae8750.nix;
        revNum = 0;
        sha256 = "3d19195feca5c8ab893da6d63f3440b7b572e1394223e07478658582ecae8750";
        };
      r1 = {
        nix = import ../hackage/test-lib-0.4-r1-0921c4ac9a3b5a3de839c264266ee02d0c9b5fb2b4a3e50e5b0adfb759657a42.nix;
        revNum = 1;
        sha256 = "0921c4ac9a3b5a3de839c264266ee02d0c9b5fb2b4a3e50e5b0adfb759657a42";
        };
      r2 = {
        nix = import ../hackage/test-lib-0.4-r2-f81026cbe6975a07ab67a29d2c3db856ae045560f00b3d3aeff1ef0b79757dd0.nix;
        revNum = 2;
        sha256 = "f81026cbe6975a07ab67a29d2c3db856ae045560f00b3d3aeff1ef0b79757dd0";
        };
      r3 = {
        nix = import ../hackage/test-lib-0.4-r3-8ec9bda243ece02b95b56dd56ce4f894645f2b6f91b89caf2e76d7ec835bec0d.nix;
        revNum = 3;
        sha256 = "8ec9bda243ece02b95b56dd56ce4f894645f2b6f91b89caf2e76d7ec835bec0d";
        };
      r4 = {
        nix = import ../hackage/test-lib-0.4-r4-532b5cf2dff9c60ae2be6f6bd98c4fbdfde176d25caedefb1fa1e8d82f90afab.nix;
        revNum = 4;
        sha256 = "532b5cf2dff9c60ae2be6f6bd98c4fbdfde176d25caedefb1fa1e8d82f90afab";
        };
      default = "r4";
      };
    };
  }