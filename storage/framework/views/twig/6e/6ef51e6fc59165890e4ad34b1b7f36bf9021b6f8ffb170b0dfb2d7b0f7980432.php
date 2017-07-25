<?php

/* theme::partials/messages */
class __TwigTemplate_273cb5d81ec04b327f57bf9e5b32023e688c07735768f2c38c16040509fc7c13 extends TwigBridge\Twig\Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        echo "<section id=\"messages\">

    <!-- Success Messages -->
    ";
        // line 4
        if (call_user_func_array($this->env->getFunction('message_exists')->getCallable(), array("success"))) {
            // line 5
            echo "        <div class=\"alert alert-success alert-dismissible\">
            <button type=\"button\" class=\"close\" data-dismiss=\"alert\">
                <span>&times;</span><span class=\"sr-only\">Close</span>
            </button>

            ";
            // line 10
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(call_user_func_array($this->env->getFunction('message_get')->getCallable(), array("success")));
            foreach ($context['_seq'] as $context["_key"] => $context["message"]) {
                // line 11
                echo "                ";
                echo $this->env->getExtension('Aptoma\Twig\Extension\MarkdownExtension')->parseMarkdown(call_user_func_array($this->env->getFunction('trans')->getCallable(), array($context["message"])));
                echo "
            ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['message'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 13
            echo "        </div>
    ";
        }
        // line 15
        echo "
    <!-- Informational Messages -->
    ";
        // line 17
        if (call_user_func_array($this->env->getFunction('message_exists')->getCallable(), array("info"))) {
            // line 18
            echo "        <div class=\"alert alert-info alert-dismissible\">
            <button type=\"button\" class=\"close\" data-dismiss=\"alert\">
                <span>&times;</span><span class=\"sr-only\">Close</span>
            </button>

            ";
            // line 23
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(call_user_func_array($this->env->getFunction('message_get')->getCallable(), array("info")));
            foreach ($context['_seq'] as $context["_key"] => $context["message"]) {
                // line 24
                echo "                ";
                echo $this->env->getExtension('Aptoma\Twig\Extension\MarkdownExtension')->parseMarkdown(call_user_func_array($this->env->getFunction('trans')->getCallable(), array($context["message"])));
                echo "
            ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['message'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 26
            echo "        </div>
    ";
        }
        // line 28
        echo "

    <!-- Warning Messages -->
    ";
        // line 31
        if (call_user_func_array($this->env->getFunction('message_exists')->getCallable(), array("warning"))) {
            // line 32
            echo "        <div class=\"alert alert-warning alert-dismissible\">
            <button type=\"button\" class=\"close\" data-dismiss=\"alert\">
                <span>&times;</span><span class=\"sr-only\">Close</span>
            </button>

            ";
            // line 37
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(call_user_func_array($this->env->getFunction('message_get')->getCallable(), array("warning")));
            foreach ($context['_seq'] as $context["_key"] => $context["message"]) {
                // line 38
                echo "                ";
                echo $this->env->getExtension('Aptoma\Twig\Extension\MarkdownExtension')->parseMarkdown(call_user_func_array($this->env->getFunction('trans')->getCallable(), array($context["message"])));
                echo "
            ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['message'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 40
            echo "        </div>
    ";
        }
        // line 42
        echo "

    <!-- Error Messages -->
    ";
        // line 45
        if (call_user_func_array($this->env->getFunction('message_exists')->getCallable(), array("error"))) {
            // line 46
            echo "        <div class=\"alert alert-danger alert-dismissible\">
            <button type=\"button\" class=\"close\" data-dismiss=\"alert\">
                <span>&times;</span><span class=\"sr-only\">Close</span>
            </button>

            ";
            // line 51
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(call_user_func_array($this->env->getFunction('message_get')->getCallable(), array("error")));
            foreach ($context['_seq'] as $context["_key"] => $context["message"]) {
                // line 52
                echo "                ";
                echo $this->env->getExtension('Aptoma\Twig\Extension\MarkdownExtension')->parseMarkdown(call_user_func_array($this->env->getFunction('trans')->getCallable(), array($context["message"])));
                echo "
            ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['message'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 54
            echo "        </div>
    ";
        }
        // line 56
        echo "
</section>
";
    }

    public function getTemplateName()
    {
        return "theme::partials/messages";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  142 => 56,  138 => 54,  129 => 52,  125 => 51,  118 => 46,  116 => 45,  111 => 42,  107 => 40,  98 => 38,  94 => 37,  87 => 32,  85 => 31,  80 => 28,  76 => 26,  67 => 24,  63 => 23,  56 => 18,  54 => 17,  50 => 15,  46 => 13,  37 => 11,  33 => 10,  26 => 5,  24 => 4,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("<section id=\"messages\">

    <!-- Success Messages -->
    {% if message_exists('success') %}
        <div class=\"alert alert-success alert-dismissible\">
            <button type=\"button\" class=\"close\" data-dismiss=\"alert\">
                <span>&times;</span><span class=\"sr-only\">Close</span>
            </button>

            {% for message in message_get('success') %}
                {{ trans(message)|markdown }}
            {% endfor %}
        </div>
    {% endif %}

    <!-- Informational Messages -->
    {% if message_exists('info') %}
        <div class=\"alert alert-info alert-dismissible\">
            <button type=\"button\" class=\"close\" data-dismiss=\"alert\">
                <span>&times;</span><span class=\"sr-only\">Close</span>
            </button>

            {% for message in message_get('info') %}
                {{ trans(message)|markdown }}
            {% endfor %}
        </div>
    {% endif %}


    <!-- Warning Messages -->
    {% if message_exists('warning') %}
        <div class=\"alert alert-warning alert-dismissible\">
            <button type=\"button\" class=\"close\" data-dismiss=\"alert\">
                <span>&times;</span><span class=\"sr-only\">Close</span>
            </button>

            {% for message in message_get('warning') %}
                {{ trans(message)|markdown }}
            {% endfor %}
        </div>
    {% endif %}


    <!-- Error Messages -->
    {% if message_exists('error') %}
        <div class=\"alert alert-danger alert-dismissible\">
            <button type=\"button\" class=\"close\" data-dismiss=\"alert\">
                <span>&times;</span><span class=\"sr-only\">Close</span>
            </button>

            {% for message in message_get('error') %}
                {{ trans(message)|markdown }}
            {% endfor %}
        </div>
    {% endif %}

</section>
", "theme::partials/messages", "");
    }
}
