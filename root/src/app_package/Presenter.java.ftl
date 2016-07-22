package ${packageName}; 

import com.garena.andriod.appkit.eventbus.EventHandler;
import com.garena.android.appkit.eventbus.IEventHandler;
import com.shopee.app.ui.base.IScreenPresenter;
import com.garena.android.appkit.eventbus.Subscriber;
import com.shopee.app.domain.event.EVENT;
import com.shopee.app.util.DataEventBus;

import javax.inject.Inject;

public class ${className}Presenter extends IScreenPresenter<${className}View> {
    private final IEventHandler mEventHandler;
    private DataEventBus eventBus;


    @Inject
    public ${className}Presenter(DataEventBus eventBus) {
        this.eventBus = eventBus;
        mEventHandler = EventHandler.get(this);
    }
    @Override
    public void onInit() {
        mEventHandler.register();
    }

    @Override
    public void onShowView() {
        super.onShowView();
        mEventHandler.registerUI();
    }

    @Override
    public void onHideView() {
        super.onHideView();
        mEventHandler.unregisterUI();
    }

    @Override
    public void onDestroy() {
        mEventHandler.unregister();
    }
    @Subscriber(EVENT.LOGOUT_SUCCESS)
    void onLogout(){
    }
}

