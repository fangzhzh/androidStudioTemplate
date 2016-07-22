package ${packageName}; 

import android.os.Bundle;
import com.shopee.app.activity.ActivityModule;
import com.shopee.app.appuser.UserComponent;
import com.shopee.app.ui.actionbar.ActionBar;
import com.shopee.app.ui.base.BaseActionActivity;
import com.shopee.app.util.HasComponent;

import org.androidannotations.annotations.EActivity;

@EActivity
public class ${className}Activity extends BaseActionActivity implements HasComponent<${component}> {

    private ${component} mComponent;
    @Override
    protected void onCreateContent(Bundle bundle) {
        setContent( ${className}View_.build(this));
    }

    @Override
    protected void setupActionBar(ActionBar.Builder builder) {
        // set up actionbar
    }

    @Override
    protected void onCreateComponent(UserComponent component) {
        mComponent = Dagger_${component}.builder()
                .userComponent(component)
                .activityModule(new ActivityModule(this))
                .build();
        mComponent.inject(this);
    }

    @Override
    public ${component} getComponent() {
        return mComponent;
    }
    public interface Injector {
		// todo: ${component} extends ${className}Activity.Injector
        void inject(${className}Activity view); 
		
    }
}


