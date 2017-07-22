/*
 * generated by Xtext 2.11.0.RC2
 */
package my.mavenized.tests

import com.google.inject.Inject
import my.mavenized.heroLanguage.Heros
import org.eclipse.xtext.testing.InjectWith
import org.eclipse.xtext.testing.XtextRunner
import org.eclipse.xtext.testing.util.ParseHelper
import org.junit.Assert
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(XtextRunner)
@InjectWith(HeroLanguageInjectorProvider)
class HeroLanguageParsingTest {
	@Inject
	ParseHelper<Heros> parseHelper
	
	@Test
	def void loadModel() {
		val result = parseHelper.parse('''
			hero superman can FLY
			hero iceman can ICE
		''')
		Assert.assertNotNull(result)
		Assert.assertTrue(result.eResource.errors.isEmpty)
	}
}
