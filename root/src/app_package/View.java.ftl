package ${packageName}; 

import android.content.Context;
import android.widget.LinearLayout;

import com.shopee.app.R;
import com.shopee.app.ui.common.LoadingProgress;
import com.shopee.app.util.HasComponent;
import com.shopee.app.util.Scope;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EViewGroup;

import javax.inject.Inject;

@EViewGroup(R.layout.${layoutName})
public class ${className}View extends LinearLayout{
    @Inject
    LoadingProgress mProgress;
    @Inject
    Scope mScope;
    @Inject
    ${className}Presenter mPresenter;
    public ${className}View(Context context) {
        super(context);
        initView(context);
    }

    private void initView(Context context){
        ((Injector) (((HasComponent) context).getComponent())).inject(this);
    }

    @AfterViews
    void onViewInit() {
        mScope.attach(mPresenter);
        mPresenter.takeView(this);
    }


    public void showProgress() {
        mProgress.show();
    }

    private void hideProgress() {
        mProgress.hide();
    }

    public interface Injector {
		// todo: ${component} extends ${className}View.Injector
        void inject(${className}View view);
    }
}

