# shared/java_openjdk_11 #

Installs OpenJDK Java 11.

- Supports modes: jdk, jre-headless, jre.
- Creates `/usr/lib/jvm/default-java` alias pointing to installation directory

This role tested using Ansible 2.8

## Requirements ##

N/A

## Role Variables ##

### Defaults ###

    - name: java_openjdk_package
      desc: Type of package to install 'jdk', 'jre' or 'jre-headless'
      default: jdk

### Vars ###

These are not meant to be modified, but can be used by other roles.

    - name: java_openjdk_version
      desc: Version of OpenJDK Java to install
      value: 11

    - name: java_openjdk_jvm_path
      desc: System path to JVMs
      value: "/usr/lib/jvm"

    - name: java_openjdk_dir
      desc: Name of the directory in which Java is installed
      value: "java-{{ java_openjdk_version }}-openjdk-amd64"

    - name: java_openjdk_java_bin
      desc: Location of the java executable
      value: "{{ java_openjdk_jvm_path }}/{{ java_openjdk_dir }}/bin/java"

    - name: java_openjdk_default_java_link
      desc: Path to `default-java` alias
      value: "{{ java_openjdk_jvm_path }}/default-java"

    - name: java_openjdk_package_name
      desc: Name of the package to be installed
      value: "openjdk-{{ java_openjdk_version }}-{{ java_openjdk_package }}"

## Dependencies ##

None.

## Example Playbook ##

Install OpenJDK Java 11 (complete, JDK):

    - hosts: all
      roles:
        - role: shared/java_openjdk

Install OpenJDK Java 11 (headless, JRE-only):

    - hosts: all
      roles:
        - role: shared/java_openjdk
          java_openjdk_package: jre-headless

## License ##

BSD

## Author Information ##

Based on java role by Kevin Brebanov
