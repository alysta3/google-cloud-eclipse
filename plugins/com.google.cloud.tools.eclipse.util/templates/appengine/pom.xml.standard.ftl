<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">

  <modelVersion>4.0.0</modelVersion>
  <packaging>war</packaging>
  <version>${projectVersion}</version>

  <groupId>${projectGroupId}</groupId>
  <artifactId>${projectArtifactId}</artifactId>

  <properties>
    <appengine.maven.plugin.version>1.3.1</appengine.maven.plugin.version>
    <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
    <project.reporting.outputEncoding>UTF-8</project.reporting.outputEncoding>
    <maven.compiler.source>${compilerVersion}</maven.compiler.source>
    <maven.compiler.target>${compilerVersion}</maven.compiler.target>
    <maven.compiler.showDeprecation>true</maven.compiler.showDeprecation>
  </properties>

  <prerequisites>
    <maven>3.3.9</maven>
  </prerequisites>

  <dependencies>
    <!-- Compile/runtime dependencies -->
    <dependency>
      <groupId>javax.servlet</groupId>
<#if servletVersion == "2.5">
      <artifactId>servlet-api</artifactId>
      <version>2.5</version>
<#else>
      <artifactId>javax.servlet-api</artifactId>
      <version>3.1.0</version>
</#if>
      <scope>provided</scope>
    </dependency>
    <dependency>
      <groupId>jstl</groupId>
      <artifactId>jstl</artifactId>
      <version>1.2</version>
    </dependency>

    <!-- Test Dependencies -->
    <dependency>
      <groupId>junit</groupId>
      <artifactId>junit</artifactId>
      <version>4.12</version>
      <scope>test</scope>
    </dependency>
  </dependencies>

  <build>
    <!-- for hot reload of the web application-->
    <outputDirectory>${r"${project.build.directory}/${project.build.finalName}/WEB-INF/classes"}</outputDirectory>
    <plugins>
      <plugin>
        <groupId>org.codehaus.mojo</groupId>
        <artifactId>versions-maven-plugin</artifactId>
        <version>2.3</version>
        <executions>
          <execution>
            <phase>compile</phase>
            <goals>
              <goal>display-dependency-updates</goal>
              <goal>display-plugin-updates</goal>
            </goals>
          </execution>
        </executions>
      </plugin>

      <plugin>
        <groupId>com.google.cloud.tools</groupId>
        <artifactId>appengine-maven-plugin</artifactId>
        <version>${r"${appengine.maven.plugin.version}"}</version>
      </plugin>
    </plugins>
  </build>
</project>