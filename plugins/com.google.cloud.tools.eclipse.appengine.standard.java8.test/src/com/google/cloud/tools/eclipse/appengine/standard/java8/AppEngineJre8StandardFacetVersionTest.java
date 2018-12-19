/*
 * Copyright 2018 Google Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.google.cloud.tools.eclipse.appengine.standard.java8;

import static org.junit.Assert.assertEquals;

import com.google.cloud.tools.eclipse.appengine.facets.AppEngineStandardFacet;
import org.junit.Assert;
import org.junit.Test;

/** Tests of the AppEngineStandardFacet JRE8 facet version definition. */
public class AppEngineJre8StandardFacetVersionTest {
  @Test
  public void testId() {
    assertEquals(
        "JRE8", AppEngineStandardFacetChangeListener.APP_ENGINE_STANDARD_JRE8.getVersionString());
  }

  @Test
  public void testAppEngineRuntimeProperty() {
    assertEquals(
        "java8",
        AppEngineStandardFacetChangeListener.APP_ENGINE_STANDARD_JRE8.getProperty(
            "appengine.runtime"));
  }

  @Test
  public void testNotObsolete() {
    Assert.assertFalse(
        AppEngineStandardFacet.usesObsoleteRuntime(
            AppEngineStandardFacetChangeListener.APP_ENGINE_STANDARD_JRE8));
  }
}