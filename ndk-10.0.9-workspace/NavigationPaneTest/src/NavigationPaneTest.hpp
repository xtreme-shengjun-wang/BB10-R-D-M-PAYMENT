// Navigation pane project template
#ifndef NavigationPaneTest_HPP_
#define NavigationPaneTest_HPP_

#include <QObject>

namespace bb { namespace cascades { class Application; }}

/*!
 * @brief Application pane object
 *
 *Use this object to create and init app UI, to create context objects, to register the new meta types etc.
 */
class NavigationPaneTest : public QObject
{
    Q_OBJECT
public:
    NavigationPaneTest(bb::cascades::Application *app);
    virtual ~NavigationPaneTest() {}
};

#endif /* NavigationPaneTest_HPP_ */