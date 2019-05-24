package ${packageName}

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import com.arellomobile.mvp.presenter.InjectPresenter
import com.arellomobile.mvp.presenter.ProvidePresenter
import com.avanpos.pos.di.scopes.ViewScope
import com.avanpos.pos.features.shared.typeddocument.TypedDocumentFragment
import dagger.Module
import dagger.Provides
import dagger.Subcomponent
import javax.inject.Inject
import javax.inject.Provider
<#if applicationPackage??>
import ${applicationPackage}.R
</#if>

class ${className}Fragment: TypedDocumentFragment(), ${className}View {
    @Inject
    lateinit var presenterProvider: Provider<${className}Presenter>
    @InjectPresenter
    lateinit var presenter: ${className}Presenter
    @ProvidePresenter
    fun providePresenter(): ${className}Presenter = presenterProvider.get()

    override fun onCreate(savedInstanceState: Bundle?) {
        // todo Inject dependencies
        super.onCreate(savedInstanceState)
    }

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?,
                              savedInstanceState: Bundle?): View? {
        return inflater.inflate(R.layout.${layoutName}, container, false)
    }
    
    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
   
    }

}

@ViewScope
@Subcomponent(modules = [${className}FragmentModule::class])
interface ${className}FragmentComponent {
    fun inject(fragment: ${className}Fragment)
}

@Module
class ${className}FragmentModule {
    @Provides
    fun provide${className}Presenter(): ${className}Presenter {
        return ${className}Presenter()
    }
}
